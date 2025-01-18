import dayjs from 'dayjs';

export const formatToYYYYMMDD = (date: Date) => {
  const target = dayjs(date);
  return target.format('YYYY/MM/DD');
};
