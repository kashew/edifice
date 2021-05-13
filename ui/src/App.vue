<template>
  <div>
    <div id="nav">
      <router-link to="/">Home</router-link> |
      <router-link to="/about">About</router-link> |
      <a class="item link" v-if="!authState.isAuthenticated" @click="login()">Login</a>
      <a class="item link" v-if="authState.isAuthenticated" @click="logout()">Logout</a>
      <span v-if="authState.isAuthenticated"> | {{name}}</span>
    </div>

    <router-view/>
  </div>
</template>

<style lang="scss">
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

#nav {
  padding: 30px;

  a {
    font-weight: bold;
    color: #2c3e50;

    &.router-link-exact-active {
      color: #42b983;
    }
  }
}

.link {
  text-decoration: underline;

  &:hover {
    cursor: pointer
  }
}
</style>

<script>
export default {
  name: 'app',
  data: function () {
    return {
      claims: '',
      name: '',
      resourceServerExamples: [
        {
          label: 'Node/Express Resource Server Example',
          url: 'https://github.com/okta/samples-nodejs-express-4/tree/master/resource-server'
        },
        {
          label: 'Java/Spring MVC Resource Server Example',
          url: 'https://github.com/okta/samples-java-spring-mvc/tree/master/resource-server'
        },
        {
          label: 'ASP.NET Core Web API Resource Server Example',
          url: 'https://github.com/okta/samples-aspnetcore/tree/master/samples-aspnetcore-2x/resource-server'
        }
      ]
    }
  },
  created () { this.setup() },
  updated () { this.setup() },
  methods: {
    async setup () {
      if (this.authState.isAuthenticated) {
        this.claims = await this.$auth.getUser()
        this.name = this.claims.name
      }
    },
    login () {
      this.$auth.signInWithRedirect('/')
    },
    async logout () {
      await this.$auth.signOut()
    }
  }
}
</script>
