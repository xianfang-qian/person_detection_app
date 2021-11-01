# Base on the openvino/ubuntu18_dev
FROM openvino/ubuntu18_dev

USER root


RUN mkdir -p /data/openvino_person_detection_app
# cd working directory
WORKDIR /app

# copy files includes object_detection script, IR file, src image
COPY . .


# Run the app
ENTRYPOINT ["/bin/bash", "script.sh"]
# CMD ["/bin/bash", "script.sh"]
# ENTRYPOINT ["/bin/bash", "/home/openvino/Desktop/script.sh"]

# CMD ["object_detection_sample_ssd.py", "-m", "person-detection-0200.xml", "-i", "person.png"]
# CMD ["/usr/bin/python3", "object_detection_sample_ssd.py", "-m", "person-detection-0200.xml", "-i", "person.png"]
# CMD /bin/bash -c "source /opt/intel/openvino_2021/bin/setupvars.sh" && /usr/bin/python3 object_detection_sample_ssd.py -m person-detection-0200.xml -i person.png
# CMD /bin/bash -c "source /opt/intel/openvino_2021/bin/setupvars.sh" && python3 object_detection_sample_ssd.py -m person-detection-0200.xml -i person.png
