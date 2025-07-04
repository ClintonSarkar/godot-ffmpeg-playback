# README #

### What is this repository for? ###

* A Godot-based application to test FFmpeg video playback with a simple UI displaying performance metrics (FPS, frame time, memory usage). The project includes a sample scene with four video players and a Label to show real-time stats.

### How do I get set up? ###

* Clone the repository to your local machine.
* Open project with Godot 4.3.
* Run the project, or /scens/test.tscn
* Press T to play, R to reload same file, S to switch between two files
* Change vid1 and vid2 strings to use different videos

### Issue ###

* The memory usage keeps stacking when using FFmpegVideoStream as the stream
* Loading the file stacks more memory than playing the file.
* The app is meant to run 24/7 so this is a major issue