// Code generated by timoni. DO NOT EDIT.

//timoni:generate timoni vendor crd -f https://raw.githubusercontent.com/external-secrets/external-secrets/v0.10.5/deploy/crds/bundle.yaml

package v1alpha1

import "strings"

// UUID generates a version 1 UUID
// (e56657e3-764f-11ef-a397-65231a88c216).
#UUID: {
	// APIVersion defines the versioned schema of this representation
	// of an object.
	// Servers should convert recognized schemas to the latest
	// internal value, and
	// may reject unrecognized values.
	// More info:
	// https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
	apiVersion: "generators.external-secrets.io/v1alpha1"

	// Kind is a string value representing the REST resource this
	// object represents.
	// Servers may infer this from the endpoint the client submits
	// requests to.
	// Cannot be updated.
	// In CamelCase.
	// More info:
	// https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
	kind: "UUID"
	metadata!: {
		name!: strings.MaxRunes(253) & strings.MinRunes(1) & {
			string
		}
		namespace!: strings.MaxRunes(63) & strings.MinRunes(1) & {
			string
		}
		labels?: {
			[string]: string
		}
		annotations?: {
			[string]: string
		}
	}

	// UUIDSpec controls the behavior of the uuid generator.
	spec!: #UUIDSpec
}

// UUIDSpec controls the behavior of the uuid generator.
#UUIDSpec: {}