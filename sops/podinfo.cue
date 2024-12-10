package holos

greeting: string | *"default greeting"
let GREETING = greeting

Platform: Components: podinfo: {
	name: "podinfo"
	path: "components/podinfo"
	parameters: greeting: GREETING
}
