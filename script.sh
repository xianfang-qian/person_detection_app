source /opt/intel/openvino_2021/bin/setupvars.sh
python3 object_detection_sample_ssd.py -m person-detection-0200.xml -i person.png
echo "Show files in /app"
ls
echo "Show files in /data/openvino_person_detection_app"
cd /data/openvino_person_detection_app/
ls
