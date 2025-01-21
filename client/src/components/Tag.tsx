const Tag = ({ text }: { text: string }) => {
  return (
    <span className="inline-block bg-c-yellow/60 rounded-full px-3 py-1 mt-16 mr-1 text-center">
      {text}
    </span>
  );
};

export default Tag;
