// /store/mutations.ts
import { MutationTree } from 'vuex'
import { RootState } from './state'

export enum MutationType { }

// mutations.ts
export type Mutations = {}

// /store/mutation.js
export const mutations: MutationTree<RootState> & Mutations = {}
