// store/getters.ts
import { GetterTree } from 'vuex'
import { LeadState } from './state'
import { RootState } from '@/store/state'

export type Getters = {}

export const getters: GetterTree<LeadState, RootState> & Getters = {}
