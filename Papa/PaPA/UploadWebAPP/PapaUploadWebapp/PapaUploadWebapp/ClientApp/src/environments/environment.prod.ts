export const environment = {
  production: true,
  subApplicationURl: '',
  currentVersion: 1.7,
  MaxFileSizeMB: 20,//in MB
  MaxFileNumber: 20,
  colDelem: "||",
  rowDelem: "@",
  tableDelem: "##",
  opDelem: "^^",
  maxParallelRequestCount: 10,// at a time number of operations call triggered, if low will effect time taken, if high will effect ram
  ParallelRequestCheckTime: 300// in ms the lower the faster and laggyUI
};
