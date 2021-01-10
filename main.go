package main

import (
	"context"
	"encoding/json"
	"log"
	"net/http"
	"os"
	"fmt"

	"github.com/gorilla/mux"
	"github.com/joho/godotenv"
	"github.com/zmb3/spotify"
	"golang.org/x/oauth2/clientcredentials"
)

var client spotify.Client = getSpotifyClient()

func goDotEnvVariable(key string) string {
	err := godotenv.Load(".env")

	if err != nil {
		log.Fatalf("Error loading .env file")
	}

	return os.Getenv(key)
}

func getSpotifyClient() spotify.Client {
	id := goDotEnvVariable("SPOTIFY_ID")
	secret := goDotEnvVariable("SPOTIFY_SECRET")

	config := &clientcredentials.Config{
		ClientID:     id,
		ClientSecret: secret,
		TokenURL:     spotify.TokenURL,
	}
	token, err := config.Token(context.Background())
	if err != nil {
		log.Fatalf("couldn't get token: %v", err)
	}

	return spotify.Authenticator{}.NewClient(token)

}

func searchSong(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")
	query := r.URL.Query()
	term := query.Get("term")

	results, err := client.Search(term, spotify.SearchTypeTrack)
	if err != nil {
		log.Fatal(err)
	}
	json.NewEncoder(w).Encode(results)
}

func getAudioAnalysis(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")
	params := mux.Vars(r)

	results, err := client.GetAudioAnalysis(spotify.ID(params["id"]))
	if err != nil {
		log.Fatal(err)
	}
	json.NewEncoder(w).Encode(results)
}

func main() {
	fmt.Println("Audio Analysis API currently running....")
	router := mux.NewRouter()

	router.HandleFunc("/search", searchSong).Methods("GET")
	router.HandleFunc("/audio-analysis/{id}", getAudioAnalysis).Methods("GET")
	log.Fatal(http.ListenAndServe(":8080", router))
}
