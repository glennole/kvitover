
<template>
    <v-container>
        <v-layout
            text-center
            wrap
        >
        <v-row
            justify="center"
            fill-height
          >
            <video ref="video" />
        </v-row>
        </v-layout>
    </v-container>
</template>

<script>
  export default {
    methods: {
      stop( ) {
        const tracks = this.mediaStream.getTracks()
        tracks.map(track => track.stop())
      }
    },
    mounted () {
      navigator.mediaDevices.getUserMedia({ video: true })
        .then(mediaStream => {
          this.$refs.video.srcObject = mediaStream
          this.$refs.video.play()
        })
        //.catch(error => console.error('getUserMedia() error:', error))
    },
    destroyed () {
        const tracks = this.mediaStream.getTracks()
        tracks.map(track => track.stop())
    }
  }
</script>