package holos

// export the component build plan to holos
holos: Component.BuildPlan

// Component is a Helm chart
Component: #Helm & {
	Namespace: "default"
	// Add metadata.namespace to all resources with kustomize.
	KustomizeConfig: Kustomization: namespace: Namespace
	Chart: {
		name:    "podinfo"
		version: "6.6.2"
		repository: {
			name: "podinfo"
			url:  "https://stefanprodan.github.io/podinfo"
		}
	}
	Values: ui: {
		message: string | *"default greeting" @tag(greeting)
	}
}
