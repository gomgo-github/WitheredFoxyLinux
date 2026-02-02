import sys
import os
from PyQt6.QtWidgets import QApplication, QLabel, QWidget
from PyQt6.QtCore import Qt, QSize, QTimer
from PyQt6.QtGui import QMovie

class FullscreenGif(QWidget):
    def __init__(self, gif_path, segundos):
        super().__init__()
        
        self.setWindowFlags(Qt.WindowType.FramelessWindowHint | Qt.WindowType.WindowStaysOnTopHint)
        self.setAttribute(Qt.WidgetAttribute.WA_TranslucentBackground)
        
        screen = QApplication.primaryScreen().geometry()
        self.setGeometry(screen)

        self.label = QLabel(self)
        self.label.setGeometry(0, 0, screen.width(), screen.height())
        
        self.movie = QMovie(gif_path)
        self.movie.setScaledSize(QSize(screen.width(), screen.height()))
        self.label.setMovie(self.movie)
        
        self.showFullScreen()
        self.movie.start()

        QTimer.singleShot(int(segundos * 1000), self.close)

    def keyPressEvent(self, event):
        if event.key() == Qt.Key.Key_Escape:
            self.close()

if __name__ == "__main__":
    app = QApplication(sys.argv)
    ruta = os.path.expanduser('./foxy.gif')
    
    segundos_duracion = 0.7 
    
    player = FullscreenGif(ruta, segundos_duracion)
    sys.exit(app.exec())
