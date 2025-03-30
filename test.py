# Updated on 2025-03-30 - commit 3
# Updated on 2025-03-29 - commit 4
# Updated on 2025-03-25 - commit 3
# Updated on 2025-03-23 - commit 2
# Updated on 2025-03-18 - commit 3
# Updated on 2025-03-16 - commit 2
# Updated on 2025-03-12 - commit 2
# Updated on 2025-03-11 - commit 2
# Updated on 2024-03-08 - commit 2
# Updated on 2024-03-07 - commit 2
# Updated on 2024-03-04 - commit 2
# Updated on 2024-03-03 - commit 2
# Updated on 2024-03-01 - commit 2
# Updated on 2025-03-27 - commit 2
# Updated on 2025-03-26 - commit 2
# Updated on 2025-03-24 - commit 3
# Updated on 2025-03-19 - commit 3
# Updated on 2025-03-05 - commit 2
# Updated on 2025-03-03 - commit 3
# Updated on 2024-03-31 - commit 4
# Updated on 2024-03-13 - commit 2
# Updated on 2024-03-02 - commit 2
import requests
import cv2
import numpy as np

url = "http://192.168.0.6:8080/shot.jpg"

while True:
    cam = requests.get(url)
    imgNp = np.array(bytearray(cam.content), dtype=np.uint8)
    img = cv2.imdecode(imgNp, -1)
    cv2.imshow("cam", img)

    if cv2.waitKey(1) & 0xFF == ord("q"):
        break






















