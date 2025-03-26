import React from "react";

const LoginVideo = () => {
  return (
    <div className="absolute top-0 left-0 z-0 h-full w-full">
      <div className="absolute top-0 left-0 h-full w-full bg-black opacity-85">
        <video
          className="h-full w-full object-cover"
          src="/background_video.mp4"
          autoPlay
          loop
          muted
          playsInline
        />
      </div>
    </div>
  );
};

export default LoginVideo;
