<template>
  <div>
    <v-container>
        <v-layout
            text-center
            wrap
        >
          <v-row
            justify="center"
          >
            <img :src="$auth.user.picture">
            <h2>{{ $auth.user.name }}</h2>
            <p>{{ $auth.user.email }}</p>
          

            <div>
              <pre>{{ JSON.stringify($auth.user, null, 2) }}</pre>
            </div>
          </v-row>
        </v-layout>
    </v-container>
  </div>
</template>