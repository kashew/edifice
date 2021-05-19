import { Module, ModuleTree } from 'vuex'
import { LeadState, state } from './state'
import { RootState } from '@/store/state'
import { mutations } from './mutations'
import { actions } from './actions'
import { getters } from './getters'

// Modules
const lead: Module<LeadState, RootState> = {
  namespaced: true,
  state,
  getters,
  mutations,
  actions
}

export default lead
