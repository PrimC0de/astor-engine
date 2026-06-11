import { QueryClient } from "@tanstack/react-query";

export const queryClient = new QueryClient({
  defaultOptions: {
    queries: {
      staleTime: 1000 * 60,
      retry: (count, error) => {
        const status = (error as { status?: number })?.status;
        return status !== 404 && count < 2;
      },
    },
  },
});
