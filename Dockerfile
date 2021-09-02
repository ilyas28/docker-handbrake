
FROM handbrake-base
RUN git clone https://github.com/HandBrake/HandBrake.git && cd HandBrake
RUN git checkout 1.4.1
RUN ./configure --launch-jobs=$(nproc) --launch
RUN make --directory=build install

