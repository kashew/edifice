export type Lead = {
  uuid: string,
  first_name: string,
  last_name: string,
  created_on: Date,
  last_contact_on: Date,
  talk_time: number
}

export type LeadState = {
  leads: Lead[]
}

export const state: LeadState = {
  leads: [
    {
      uuid: '40d3b884-cdee-4e9f-b1db-4741c0fe9cdf',
      first_name: 'Greg',
      last_name: 'Salwitz',
      created_on: new Date(2021, 4, 18),
      last_contact_on: new Date(2021, 4, 19),
      talk_time: 32
    }
  ]
}
