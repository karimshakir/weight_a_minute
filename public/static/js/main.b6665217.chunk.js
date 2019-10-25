(window["webpackJsonpreact-weight-a-minute"]=window["webpackJsonpreact-weight-a-minute"]||[]).push([[0],{21:function(e,t,a){e.exports=a(57)},26:function(e,t,a){},52:function(e,t,a){},57:function(e,t,a){"use strict";a.r(t);var n=a(0),o=a.n(n),l=a(19),r=a.n(l),s=(a(26),a(2)),i=a(3),c=a(5),m=a(4),h=a(6),u=a(1),g=a.n(u);var d=function(e){return e.alert.length?o.a.createElement("div",{className:"alert alert-danger",role:"alert"},e.alert.join(", ")):null},p=a(7),v=function(e){function t(){var e,a;Object(s.a)(this,t);for(var n=arguments.length,o=new Array(n),l=0;l<n;l++)o[l]=arguments[l];return(a=Object(c.a)(this,(e=Object(m.a)(t)).call.apply(e,[this].concat(o)))).state={currentWeight:"",alert:[]},a.submitWeight=function(){var e=a.state.currentWeight,t=localStorage.getItem("jwt");e?g.a.post("/weights",{value:e},{headers:{Authorization:"Bearer ".concat(t)}}).then((function(e){console.log(e.data),Object(p.d)("profile")})).catch((function(e){console.log(e)})):(console.log("Weight Cannot Be Blank"),a.setState({alert:["Weight Cannot Be Blank"]}))},a.handleChange=function(e){a.setState({currentWeight:e.target.value}),console.log(e.target.value)},a}return Object(h.a)(t,e),Object(i.a)(t,[{key:"render",value:function(){return o.a.createElement("div",null,o.a.createElement("h1",null," Enter Weight(lbs)"),o.a.createElement(d,{alert:this.state.alert}),o.a.createElement("input",{placeholder:"###",onChange:this.handleChange}),o.a.createElement("button",{className:"btn btn-primary",onClick:this.submitWeight},"Submit"))}}]),t}(o.a.Component),E=function(e){function t(){return Object(s.a)(this,t),Object(c.a)(this,Object(m.a)(t).apply(this,arguments))}return Object(h.a)(t,e),Object(i.a)(t,[{key:"render",value:function(){return console.log("LoggedIn: "+this.props.isLoggedIn),this.props.isLoggedIn?o.a.createElement(p.b,{to:"profile",noThrow:!0}):o.a.createElement("div",null,o.a.createElement("span",null,o.a.createElement("div",{className:"alert alert-danger",role:"alert"},"DEMO VERSION")),o.a.createElement("h1",null," Login "),o.a.createElement("input",{id:"name"}),o.a.createElement("button",{className:"btn btn-primary",onClick:this.props.handleLogin},"Login"),o.a.createElement("br",null),o.a.createElement(p.a,{to:"/signup"},"Sign Up"))}}]),t}(o.a.Component),b=function(e){function t(){return Object(s.a)(this,t),Object(c.a)(this,Object(m.a)(t).apply(this,arguments))}return Object(h.a)(t,e),Object(i.a)(t,[{key:"render",value:function(){return console.log("LoggedIn: "+this.props.isLoggedIn),this.props.isLoggedIn?o.a.createElement(p.b,{to:"profile",noThrow:!0}):o.a.createElement("div",null,o.a.createElement("h1",null," SignUp "),o.a.createElement("input",{id:"name"}),o.a.createElement("button",{className:"btn btn-primary",onClick:this.props.handleSignup},"SignUp"),o.a.createElement("br",null),o.a.createElement(p.a,{to:"/login"},"Login"))}}]),t}(o.a.Component);var f=function(e){return e.showAllWeights&&e.weights.map((function(e,t){return t>0?o.a.createElement("p",{key:e.id}," ",e.value,"lbs, ",e.date," "):null}))};var w=function(e){return o.a.createElement("p",null,"Current Weight:",e.weights.length?o.a.createElement("span",null," ",e.weights[0].value,"lbs "):o.a.createElement("span",null," no weights entered "))};var y=function(e){var t=e.weight,a=e.Tag;return t>=0?o.a.createElement(a,null,"Total ",o.a.createElement("span",{style:{color:"blue"}}," Weight Loss "),": ",t,"lbs"):o.a.createElement(a,null,"Total ",o.a.createElement("span",{style:{color:"red"}}," Weight Gain "),": ",Math.abs(t),"lbs")};var T=function(e){var t=e.theTeam,a=e.Tag;return o.a.createElement(a,null," ",o.a.createElement("span",{style:{color:"blue"}}," [Rank : ",t.rank,"]"))};var j=function(e){return o.a.createElement("div",{className:"list-group"},e.theTeams?e.theTeams.map((function(t,a){return o.a.createElement("div",{className:"list-group-item",key:a},o.a.createElement("div",{className:"d-flex"}," ",t.joined?o.a.createElement("button",{className:"btn btn-warning",onClick:function(){return e.handleLeaveTeam(t.id)}},"-"):o.a.createElement("button",{className:"btn btn-primary",onClick:function(){return e.handleJoinTeam(t.id)}},"+"),o.a.createElement("span",{className:"ml-4"},"[Rank: ",t.rank,"]",o.a.createElement(T,{theTeam:t,Tag:"span"})),o.a.createElement("span",{className:"ml-4"},t.name)))})):o.a.createElement("p",null,"No Competitions "))},k=function(e){function t(){var e,a;Object(s.a)(this,t);for(var n=arguments.length,o=new Array(n),l=0;l<n;l++)o[l]=arguments[l];return(a=Object(c.a)(this,(e=Object(m.a)(t)).call.apply(e,[this].concat(o)))).state={player:null,errors:[],showAllWeights:!1,showMyTeams:!1,totalWtLoss:"",myWeights:[],myTeams:[]},a.myRank_of_selectedTeam=function(e){var t=localStorage.getItem("jwt");g.a.get("/myrank/"+e,{headers:{Authorization:"Bearer ".concat(t)}}).then((function(e){console.log(e.data),a.setState({leaders:e.data})}))},a.leaveTeam=function(e){var t=localStorage.getItem("jwt");g.a.delete("/enrollments/"+e,{headers:{Authorization:"Bearer ".concat(t)}}).then((function(e){window.location.reload(!1)}))},a.toggleIndexWeights=function(){a.setState({showAllWeights:!a.state.showAllWeights,showMyTeams:!1})},a.showMyTeams=function(){a.setState({showMyTeams:!a.state.showMyTeams,showAllWeights:!1})},a}return Object(h.a)(t,e),Object(i.a)(t,[{key:"componentDidMount",value:function(){var e=this,t=localStorage.getItem("jwt");g.a.get("/players/me",{headers:{Authorization:"Bearer ".concat(t)}}).then((function(t){console.log(t.data),e.setState({player:t.data}),e.setState({myTeams:t.data.teams.reverse()})})),g.a.get("/weights",{headers:{Authorization:"Bearer ".concat(t)}}).then((function(t){e.setState({myWeights:t.data})}))}},{key:"render",value:function(){return this.state.player?o.a.createElement("div",null,o.a.createElement("h1",null,"PROFILE PAGE"),o.a.createElement(y,{weight:this.state.player.total_loss,Tag:"h3"}),o.a.createElement(w,{weights:this.state.player.weights}),o.a.createElement("button",{className:"btn btn-primary",onClick:this.toggleIndexWeights}," My Weight History "),o.a.createElement("button",{className:"btn btn-primary",onClick:this.showMyTeams},"My Competitions"),o.a.createElement(f,{weights:this.state.myWeights,showAllWeights:this.state.showAllWeights,weightLost:this.state.player.weightlost}),this.state.showMyTeams&&o.a.createElement(j,{theTeams:this.state.myTeams.map((function(e){return e.joined=!0,e})),handleLeaveTeam:this.leaveTeam})):null}}]),t}(o.a.Component),S=function(e){function t(){var e,a;Object(s.a)(this,t);for(var n=arguments.length,o=new Array(n),l=0;l<n;l++)o[l]=arguments[l];return(a=Object(c.a)(this,(e=Object(m.a)(t)).call.apply(e,[this].concat(o)))).state={teams:[],newTeamName:"",showTeams:!1,alert:[]},a.submitTeam=function(){var e=a.state.newTeamName,t=localStorage.getItem("jwt");e?g.a.post("/teams",{name:e},{headers:{Authorization:"Bearer ".concat(t)}}).then((function(e){var t=e.data;t.joined=!t.joined;var n=a.state.teams.slice();n.unshift(t),a.setState({teams:n}),a.setState({newTeamName:""}),a.value=a.state.newTeamName})).catch((function(e){console.log(e.response.data.errors),a.setState({alert:e.response.data.errors})})):(console.log("Team Cannot Be Blank"),a.setState({alert:["Team Cannot Be Blank"]}))},a.leaveTeam=function(e){var t=localStorage.getItem("jwt");g.a.delete("/enrollments/"+e,{headers:{Authorization:"Bearer ".concat(t)}}).then((function(t){var n=a.state.teams.map((function(t){return t.id===e&&(t.joined=!t.joined),t}));a.setState({teams:n}),a.setState({joinedTeam:!1}),console.log("joinedTeam: "+a.state.joinedTeam)}))},a.joinTeam=function(e){var t=localStorage.getItem("jwt");g.a.post("/enrollments",{team_id:e},{headers:{Authorization:"Bearer ".concat(t)}}).then((function(t){var n=a.state.teams.map((function(t){return t.id===e&&(t.joined=!t.joined),t}));a.setState({teams:n}),console.log("joinedTeam: "+a.state.joinedTeam)})).catch((function(e){console.log(e)}))},a.handleChange=function(e){a.setState({newTeamName:e.target.value}),e.target.value=""},a}return Object(h.a)(t,e),Object(i.a)(t,[{key:"componentDidMount",value:function(){var e=this,t=localStorage.getItem("jwt");g.a.get("/teams",{headers:{Authorization:"Bearer ".concat(t)}}).then((function(t){console.log(t.data),e.setState({teams:t.data})}))}},{key:"render",value:function(){return o.a.createElement("div",{className:"list-group"},o.a.createElement("div",null,o.a.createElement("h1",null,"COMPETITION PAGE"),o.a.createElement(d,{alert:this.state.alert}),o.a.createElement("p",null,"Create New Competition"),o.a.createElement("input",{id:"enter-team",value:this.state.newTeamName,onChange:this.handleChange,placeholder:""}),o.a.createElement("button",{className:"btn btn-primary",onClick:this.submitTeam},"Submit"),o.a.createElement("br",null),o.a.createElement("br",null),o.a.createElement("br",null),o.a.createElement("p",null,"All Existing Competitions Are Below"),o.a.createElement(j,{handleJoinTeam:this.joinTeam,handleLeaveTeam:this.leaveTeam,showTeams:this.state.showTeams,theTeams:this.state.teams,latestTeamRank:this.state.teams.rank,joinedTeam:this.state.joinedTeam})))}}]),t}(o.a.Component);var I=function(e){return o.a.createElement("select",{className:"form-control",onChange:e.handleClick},o.a.createElement("option",{value:""},"Select a Competition"),e.theTeams.map((function(e,t){return o.a.createElement("option",{key:e.id,value:e.id},e.name)})))};var N=function(e){return o.a.createElement("div",{className:"list-group"},!e.leaders.length||e.leaders.map((function(e,t){return o.a.createElement("div",{key:t},o.a.createElement("p",null,"Rank: #",t+1,", Player:",e.name,",",o.a.createElement(y,{weight:e.wt_loss,Tag:"span"})))})))},O=function(e){function t(){var e,a;Object(s.a)(this,t);for(var n=arguments.length,l=new Array(n),r=0;r<n;r++)l[r]=arguments[r];return(a=Object(c.a)(this,(e=Object(m.a)(t)).call.apply(e,[this].concat(l)))).state={teams:[],players:null,totalWtLoss:"",showTeams:!1,leaders:[],selectedTeamName:""},a.showTeams=function(){if(a.state.showTeams.length<=0)return o.a.createElement("p",null,"No Teams Exist Yet>");a.setState({showTeams:!a.state.showTeams})},a.ranked_players_of_selectedTeam=function(e){var t=e.target.value;if(t){var n=localStorage.getItem("jwt");g.a.get("/rank/"+t,{headers:{Authorization:"Bearer ".concat(n)}}).then((function(e){console.log(e.data),a.setState({leaders:e.data})})),g.a.get("/selectedTeam/"+t,{headers:{Authorization:"Bearer ".concat(n)}}).then((function(e){console.log(e.data[0].name),a.setState({selectedTeamName:e.data[0].name})}))}else a.setState({leaders:[]})},a}return Object(h.a)(t,e),Object(i.a)(t,[{key:"componentDidMount",value:function(){var e=this,t=localStorage.getItem("jwt");g.a.get("/players",{headers:{Authorization:"Bearer ".concat(t)}}).then((function(e){console.log(e.data)})),g.a.get("/teams",{headers:{Authorization:"Bearer ".concat(t)}}).then((function(t){console.log(t.data),e.setState({teams:t.data})}))}},{key:"render",value:function(){return o.a.createElement("div",null,o.a.createElement("h1",null,"Leader Board"),o.a.createElement(I,{handleClick:this.ranked_players_of_selectedTeam,showTeams:this.state.showTeams,theTeams:this.state.teams}),o.a.createElement("br",null),o.a.createElement(N,{leaders:this.state.leaders,showTeams:this.state.showTeams,theTeams:this.state.teams,thePlayers:this.state.players}))}}]),t}(o.a.Component),L=(a(52),function(e){function t(){return Object(s.a)(this,t),Object(c.a)(this,Object(m.a)(t).apply(this,arguments))}return Object(h.a)(t,e),Object(i.a)(t,[{key:"render",value:function(){return this.props.isLoggedIn?o.a.createElement(this.props.component,null):o.a.createElement(p.b,{to:"login",noThrow:!0})}}]),t}(o.a.Component)),C=function(e){function t(){var e,a;Object(s.a)(this,t);for(var n=arguments.length,o=new Array(n),l=0;l<n;l++)o[l]=arguments[l];return(a=Object(c.a)(this,(e=Object(m.a)(t)).call.apply(e,[this].concat(o)))).state={isLoggedIn:!1,alert:[]},a.login=function(){var e=document.getElementById("name").value;e?g.a.post("/sessions",{name:e}).then((function(e){var t=e.data.jwt;localStorage.setItem("jwt",t),a.setState({isLoggedIn:!0})})).catch((function(e){a.setState({isLoggedIn:!1}),console.log(e.response.data),a.setState({alert:e.response.data.errors})})):(console.log("Entry Cannot Be Blank"),a.setState({alert:["Entry Cannot Be Blank"]}))},a.signup=function(){var e=document.getElementById("name").value;e?g.a.post("/players",{name:e}).then((function(e){var t=e.data.jwt;localStorage.setItem("jwt",t),a.setState({isLoggedIn:!0})})).catch((function(e){console.log(e.response.data.errors),a.setState({isLoggedIn:!1}),console.log(e.response.data.errors),a.setState({alert:e.response.data.errors})})):(console.log("Entry Cannot Be Blank"),a.setState({alert:["Entry Cannot Be Blank"]}))},a.logout=function(){localStorage.clear(),a.setState({isLoggedIn:!1})},a}return Object(h.a)(t,e),Object(i.a)(t,[{key:"componentDidMount",value:function(){var e=this,t=localStorage.getItem("jwt");t?(console.log("already logged in"),g.a.get("/sessions",{headers:{Authorization:"Bearer ".concat(t)}}).then((function(t){e.setState({isLoggedIn:!0})})).catch((function(t){e.setState({isLoggedIn:!1})}))):console.log("logged out")}},{key:"render",value:function(){return o.a.createElement("div",null,o.a.createElement("nav",{className:"navbar navbar-expand-lg navbar-light bg-light"},o.a.createElement("div",{className:"navbar-brand"},"WEIGHT - A - MINUTE"),o.a.createElement("button",{className:"navbar-toggler",type:"button","data-toggle":"collapse","data-target":"#navbarNav","aria-controls":"navbarNav","aria-expanded":"false","aria-label":"Toggle navigation"},o.a.createElement("span",{className:"navbar-toggler-icon"})),o.a.createElement("div",{className:"collapse navbar-collapse",id:"navbarNav"},o.a.createElement("div",{className:"navbar-nav"},o.a.createElement("div",{className:"nav-item nav-link"},o.a.createElement(p.a,{to:"/"},"Home")),o.a.createElement("div",{className:"nav-item nav-link"},o.a.createElement(p.a,{to:"/teams"},"Competitions")),o.a.createElement("div",{className:"nav-item nav-link"},o.a.createElement(p.a,{to:"/leaderboard"},"Leader Board")),o.a.createElement("div",{className:"nav-item nav-link"},o.a.createElement(p.a,{to:"/profile"},"Profile")),this.state.isLoggedIn&&o.a.createElement("div",{className:"nav-item nav-link"},o.a.createElement("div",{onClick:this.logout},"Logout"))))),o.a.createElement(d,{alert:this.state.alert}),o.a.createElement("div",{className:"container"},o.a.createElement(p.c,null,o.a.createElement(E,{path:"login",isLoggedIn:this.state.isLoggedIn,handleLogin:this.login}),o.a.createElement(b,{path:"signup",isLoggedIn:this.state.isLoggedIn,handleSignup:this.signup}),o.a.createElement(L,{path:"teams",isLoggedIn:this.state.isLoggedIn,component:S}),o.a.createElement(L,{path:"/",isLoggedIn:this.state.isLoggedIn,component:v}),o.a.createElement(L,{path:"profile",isLoggedIn:this.state.isLoggedIn,component:k}),o.a.createElement(L,{path:"leaderboard",isLoggedIn:this.state.isLoggedIn,component:O}))))}}]),t}(o.a.Component);Boolean("localhost"===window.location.hostname||"[::1]"===window.location.hostname||window.location.hostname.match(/^127(?:\.(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)){3}$/));a(53),a(56);r.a.render(o.a.createElement(C,null),document.getElementById("root")),"serviceWorker"in navigator&&navigator.serviceWorker.ready.then((function(e){e.unregister()}))}},[[21,1,2]]]);
//# sourceMappingURL=main.b6665217.chunk.js.map