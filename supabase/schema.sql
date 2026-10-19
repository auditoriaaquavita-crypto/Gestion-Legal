-- Gestión Legal de Clientes · estructura de la base en Supabase
-- Pegar completo en Supabase › SQL Editor › New query y tocar "Run".

create table if not exists public.casos (
  id text primary key,
  data jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

create table if not exists public.config (
  id text primary key,
  data jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

-- Solo usuarios con sesión iniciada pueden ver y cargar casos.
alter table public.casos enable row level security;
alter table public.config enable row level security;

drop policy if exists casos_usuarios on public.casos;
create policy casos_usuarios on public.casos
  for all to authenticated using (true) with check (true);

drop policy if exists config_lectura on public.config;
create policy config_lectura on public.config
  for select to authenticated using (true);

-- Actualización en vivo del tablero.
alter publication supabase_realtime add table public.casos, public.config;
