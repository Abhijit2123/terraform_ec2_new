FROM abhi2305/terraform_base_image:latest

ARG TIMESTAMP

LABEL image_id=$TIMESTAMP

RUN git clone https://github.com/Abhijit2123/terraform_ec2_new.git

WORKDIR /terraform_ec2_new/

#RUN cp -rf /opt/credentials_script.sh ./

COPY credentials_script.sh ./

RUN mkdir -p /root/.aws/

COPY credentials /root/.aws/

ENV TF_LOG TRACE

ENV TF_LOG_PATH ./terraform.log.$TIMESTAMP

RUN terraform init

CMD ["sleep", "infinity"]
