import { Component, OnInit, ViewChild } from '@angular/core';

@Component({
  selector: 'app-video',
  templateUrl: './video.component.html',
  styleUrls: ['./video.component.css']
})
export class VideoComponent implements OnInit {

  constructor() { }

  ngOnInit(): void {
  }

  name = 'Video events';
  videoSource = "https://habiticamiso.s3.amazonaws.com/cypress%5Cvideos%5Chabitica%5Crandomtesting%5Cscreen_clicks.spec.js.mp4";

  @ViewChild('videoPlayer') videoplayer: any;
  public startedPlay: boolean = false;
  public show: boolean = false;
  pauseVideo(videoplayer) {
    videoplayer.nativeElement.play();
    // this.startedPlay = true;
    // if(this.startedPlay == true)
    // {
    setTimeout(() => {
      videoplayer.nativeElement.pause();
      if (videoplayer.nativeElement.paused) {
        this.show = !this.show;
      }
    }, 5000);
    // }
  }

  closebutton(videoplayer) {
    this.show = !this.show;
    videoplayer.nativeElement.play();
  }

}
