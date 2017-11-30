name := "webjars-sample-play2"

version := "1.0-SNAPSHOT"

scalaVersion := "2.12.3"

libraryDependencies ++= Seq(
  guice,
  "org.webjars" %% "webjars-play" % "2.6.1",
  "org.webjars" % "bootstrap" % "3.3.4",
    javaJdbc
)

libraryDependencies += "mysql" % "mysql-connector-java" % "5.1.44"
libraryDependencies += "com.typesafe" % "slick_2.10.0-RC1" % "0.11.2"
libraryDependencies += "org.mindrot" % "jbcrypt" % "0.3m"

/*
val appDependencies = Seq(
    jdbc,
    "mysql" % "mysql-connector-java" % "5.6.38",
	
)*/

LessKeys.compress in Assets := true

pipelineStages := Seq(digest, gzip)

includeFilter in (Assets, LessKeys.less) := "*.less"

routesGenerator := InjectedRoutesGenerator

lazy val root = (project in file(".")).enablePlugins(PlayJava,PlayEbean,PlayScala)
