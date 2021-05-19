/**
 * Resources:
 *   * https://soshace.com/building-web-apps-with-vue-3-composition-api-typescript-vuex4-0/
 *   * https://codeburst.io/vuex-and-typescript-3427ba78cfa8
 */

import { createStore, createLogger, ModuleTree } from 'vuex'
import { RootState, state } from './state'
import { mutations } from './mutations'
import { actions } from './actions'
import { getters } from './getters'
import lead from './modules/lead'

export const modules: ModuleTree<RootState> = { lead }

export const store = createStore<RootState>({
  plugins: process.env.NODE_ENV === 'development' ? [createLogger()] : [],
  state,
  mutations,
  actions,
  getters,
  modules
})

export function useStore() {
  return store
}
