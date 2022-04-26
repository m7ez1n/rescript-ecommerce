@react.component
let make = () => {
  <div className="w-full py-8 bg-blue-500 flex justify-end items-center">
    <p className="absolute mr-4 right-2 top-2 bg-white rounded-full p-2 cursor-pointer group">
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className="h-6 w-6 group-hover:opacity-50 opacity-70"
        fill="none"
        viewBox="0 0 24 24"
        stroke="black">
        <path
          strokeLinecap="round"
          strokeLinejoin="round"
          strokeWidth="1.5"
          d="M3 3h2l.4 2M7 13h10l4-8H5.4M7 13L5.4 5M7 13l-2.293 2.293c-.63.63-.184 1.707.707 1.707H17m0 0a2 2 0 100 4 2 2 0 000-4zm-8 2a2 2 0 11-4 0 2 2 0 014 0z"
        />
      </svg>
    </p>
  </div>
}
