/**
 * DO NOT MODIFY!
 * This file is generated by the mix task phoenix.gen.jsrouter and will
 * be overwritten by the next build
 *
 * <% {year, month, day} = :erlang.date %>
 * <% {hour, minutes, seconds} = :erlang.time %>
 * generated on <%= year %>-<%= month %>-<%= day %> <%= hour %>:<%= minutes %>:<%= seconds %> 
 */

(function (name, definition){
   if (typeof define === 'function'){
     define(definition);
   } else if (typeof module !== 'undefined' && module.exports) {
     module.exports = definition();
   } else {
     var theModule = definition(), global = this, old = global[name];
     theModule.noConflict = function () {
       global[name] = old;
       return theModule;
     };
     global[name] = theModule;
   }
 })('jsrouter', function () {
   return { <%= for %{name: name, path: path} <- routes do %>
     <%= name %>: function <%= name %>() {
       return '<%= path %>';
     }, <% end %>
   }
 });