addSbtPlugin("com.typesafe.play" % "sbt-plugin" % "2.6.2")

addSbtPlugin("com.typesafe.sbt" % "sbt-jshint" % "1.0.5")

addSbtPlugin("com.typesafe.sbt" % "sbt-digest" % "1.1.2")

addSbtPlugin("com.typesafe.sbt" % "sbt-gzip" % "1.0.1")

addSbtPlugin("com.typesafe.sbt" % "sbt-less" % "1.1.1")

addSbtPlugin("com.typesafe.sbt" % "sbt-coffeescript" % "1.0.1")

addSbtPlugin("com.typesafe.sbteclipse" % "sbteclipse-plugin" % "5.2.4")

addSbtPlugin("com.typesafe.sbt" % "sbt-play-ebean" % "4.0.1")

//If Windows to debug:
//set "JAVA_OPTS=-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=9999"
//sbt run
//
//Else:
//sbt -jvm-debug 9999 run

dependencyOverrides += "com.typesafe.sbt" % "sbt-js-engine" % "1.1.4"