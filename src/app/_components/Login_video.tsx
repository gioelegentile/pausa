import React from "react";

const LoginVideo = () => {
  return (
    <div className="absolute top-0 left-0 z-0 h-full w-full">
      <video
        className="h-full w-full object-cover"
        src="/background_video.mp4"
        autoPlay
        loop
        muted
        playsInline
      />
    </div>
  );
};

export default LoginVideo;
