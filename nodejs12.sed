s/{{npm_version}}/6.10.2/g
s/{{node_version}}/12.9.0/g
s/{{node_version_major}}/12/g
s/{{exclusive_arch}}/%{ix86} x86_64 armv7hl aarch64 ppc64 ppc64le s390x/g

#
#
# openssl version
s/{{intree_openssl}}/0%{?suse_version} >= 1500 || 0%{?sle_version} >= 120400/
#
#
# icu versions
s/{{intree_icu}}/0%{?suse_version} >= 1550/g
s/{{min_icu_version}}/64/g
#
#
# libcares2 version
s/{{intree_libcares2}}/0%{suse_version} >= 1330/g
s/{{min_libcares2_version}}/1.10.0/g
#
#
# nghttp2 version
s/{{intree_nghttp2}}/0%{suse_version} >= 1550/g
s/{{min_nghttp2_version}}/1.39.2/g

# Git staging directory
s/{{git_branch}}/v12.x-staging/

# Extra Sources
s,{{SOURCES_EXTRA}},# Only required to run unit tests in NodeJS 10+ \
Source10:       update_npm_tarball.sh \
Source11:       node_modules.tar.xz,
