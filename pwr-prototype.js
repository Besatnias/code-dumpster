const rp = require('request-promise')

const User = function(opts){
  opts.token ? this.token = opts.token : throw new Error("You need a token to use this API.")
  this.baseUrl = opts.baseUrl || `https://api.pwrtelegram.xyz/user`
  this.poll = opts.poll || false

  this.api = function(method, form) {
    opts = {
      method: 'POST',
      uri: `${this.baseUrl}${this.token}/${method}`,
      body: form
    }
    return rp(opts).then(data=>{
      json = JSON.parse(data)
      if (json.ok) {
        return json.result
      } else {
        throw json
      }
    })
  }

  this._getUpdates = function(offset) {
    let opts;
    opts = offset ? {offset: offset, timeout: 60} : {timeout: 60}
      return api("getUpdates", opts).then(res=>{
          this.handler(res) // create a handler
          if(res.result.length > 0) {
            let offset = res.result[res.result.length - 1].update_id + 1
            this._getUpdates(offset)
        } else {
            this._getUpdates(0)
        }
      })
  }

  this.startPolling = function(){
    return this._getUpdates(0)
  }

  this.sendMessage = function(chatId, text, opts) {
    if (typeof chatId === 'object') {
      opts = chatId
    } else {
      opts.chat_id = opts.chat_id || chatId
      opts.text = opts.text || text
    }
    if (!chatId) throw "No parameters were passed"
    return api('sendMessage', opts)
  }
}

const bot = new User({token: ''})
bot.sendMessage('@Bestulo', "test message")
