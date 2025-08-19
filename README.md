Live Translation CLI
A real-time, bidirectional command-line translation tool designed to facilitate seamless conversation between two speakers of different languages. The application listens for speech, automatically detects the language, translates it to a user-defined default language, and vocalizes the result. It then listens for a response and translates it back to the original language, acting as a virtual interpreter.

Key Features
Real-time Speech Recognition: Captures audio directly from the microphone and transcribes it into text.

Automatic Language Detection: Intelligently identifies the source language of the speaker.

Bidirectional Translation: Translates incoming speech to the user's language and translates the user's response back to the detected language.

Voice Synthesis Output: Reads the translated text aloud using a clear, synthesized voice.

Dockerized Environment: Encapsulated in a Docker container for consistent, cross-platform deployment and ease of use.

Technology Stack
Backend: Python 3.10

Containerization: Docker

Core Libraries:

SpeechRecognition: For capturing and recognizing speech.

PyAudio: For microphone audio stream access.

googletrans: For language detection and translation.

pyttsx3: For text-to-speech (TTS) synthesis.

Prerequisites
Before you begin, ensure you have the following installed on your system:

Docker

A functional microphone and speaker setup.

Installation & Usage
Getting the application running is straightforward. Follow these steps from your terminal.

1. Clone the Repository
   Bash

git clone https://github.com/arshiarasekhizadeh/live_translation.git
cd live-translator 2. Build the Docker Image
This command builds the Docker image from the Dockerfile, packaging all dependencies and source code.

Bash

docker build -t live-translator . 3. Run the Application
Execute the following command to run the translator inside a container.

Bash

docker run -it --rm --device /dev/snd live-translator
Understanding the command:

-it runs the container in interactive mode.

--rm automatically cleans up and removes the container upon exit.

--device /dev/snd grants the container access to your host machine's sound hardware. This path is standard for Linux systems.

Note for macOS/Windows Users: Audio device mapping in Docker can be more complex on non-Linux systems. You may need to investigate alternative solutions or configurations for sharing your microphone and speakers with the container.

Configuration
You can easily set your default language by modifying the configuration file.

Navigate to src/config.py.

Change the USER_LANGUAGE variable to your preferred language code (e.g., 'en' for English, 'es' for Spanish, 'fr' for French).

Python

# src/config.py

# Set the default language for the primary user.

# A list of language codes can be found here: https://py-googletrans.readthedocs.io/en/latest/#googletrans-languages

USER_LANGUAGE = 'en'
Project Structure
live-translator/
│
├── .dockerignore
├── Dockerfile
├── README.md
├── requirements.txt
│
└── src/
├── **init**.py
├── config.py
├── main.py
└── translator.py
Contributing
Contributions are welcome! If you have suggestions for improvements or encounter any issues, please feel free to open an issue or submit a pull request.

Fork the Project

Create your Feature Branch (git checkout -b feature/AmazingFeature)

Commit your Changes (git commit -m 'Add some AmazingFeature')

Push to the Branch (git push origin feature/AmazingFeature)

Open a Pull Request

License
Distributed under the MIT License. See LICENSE file for more information.
