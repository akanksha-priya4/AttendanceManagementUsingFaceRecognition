# Attendance Management Using Face Recognition

A Python-based attendance management system that uses face recognition technology to automatically track and manage student/employee attendance.

## Features

- **Face Recognition**: Uses OpenCV and face detection algorithms to identify individuals
- **Automatic Attendance Tracking**: Automatically marks attendance when a face is detected
- **Database Integration**: Stores attendance records in a structured database
- **User Interface**: Simple and intuitive GUI for easy interaction
- **Manual Entry Option**: Allows manual attendance entry when needed
- **Attendance Reports**: Generate and view attendance reports
- **Export Functionality**: Export attendance data to various formats

## Project Structure

```
├── attendance.py              # Main attendance tracking module
├── automaticAttedance.py      # Automatic attendance detection
├── takeImage.py              # Image capture functionality
├── trainImage.py             # Training face recognition model
├── show_attendance.py        # Display attendance reports
├── takemanually.py           # Manual attendance entry
├── test.py                   # Testing utilities
├── requirements.txt          # Python dependencies
├── project_requirement.txt   # Project requirements
├── haarcascade_frontalface_default.xml  # Face detection model
├── haarcascade_frontalface_alt.xml      # Alternative face detection model
└── AMS.ico                   # Application icon
```

## Installation

1. Clone the repository:
```bash
git clone <your-repository-url>
cd AttendanceManagementUsingFaceRecognition
```

2. Install required dependencies:
```bash
pip install -r requirements.txt
```

3. Ensure you have the required system dependencies:
   - Python 3.7+
   - OpenCV
   - Webcam access

## Usage

### Setting Up Face Recognition

1. Run the training module to capture face images:
```bash
python trainImage.py
```

2. Follow the prompts to capture multiple images of each person

### Taking Attendance

1. Start the automatic attendance system:
```bash
python automaticAttedance.py
```

2. The system will automatically detect faces and mark attendance

### Manual Attendance Entry

For manual attendance entry:
```bash
python takemanually.py
```

### Viewing Attendance Reports

To view attendance records:
```bash
python show_attendance.py
```

## Dependencies

- OpenCV
- NumPy
- Pandas
- SQLite3 (built-in)
- Tkinter (built-in)

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## License

This project is open source and available under the MIT License.

## Author

Your Name - [Your GitHub Profile]

## Acknowledgments

- OpenCV community for face detection algorithms
- Python community for excellent libraries and tools 