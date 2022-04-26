@react.component
let make = (~children, ~onClick=?, ~disabled=false, ~wfull=false) => {
  let fullWidth = if wfull {
    "w-full"
  } else {
    ""
  }

  let disabledClass = if disabled {
    "bg-gray-400"
  } else {
    "bg-blue-500 hover:bg-blue-700"
  }

  <button
    className={`${disabledClass} text-white font-bold py-2 px-4 rounded-3xl ${fullWidth}`}
    disabled
    ?onClick>
    children
  </button>
}
