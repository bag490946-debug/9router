# Use official OmniRoute image directly (no need to build from scratch)
FROM diegosouzapw/omniroute:latest

# Data directory for SQLite DB persistence
ENV DATA_DIR=/app/data

# Single port mode for Render (dashboard + API on same port)
ENV PORT=8080

ENV NODE_ENV=production

# Security secrets — CHANGE THESE in Render's environment tab, not here!
ENV JWT_SECRET=changeme_replace_in_render_dashboard
ENV INITIAL_PASSWORD=God@111983
ENV STORAGE_ENCRYPTION_KEY=changeme_replace_in_render_dashboard

# Skip auto-open browser (headless cloud mode)
ENV NO_OPEN=true

# Expose port
EXPOSE 8080

# Data volume for persistence
VOLUME ["/app/data"]
