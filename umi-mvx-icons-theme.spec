#
# Spec file for package UMI MVX Icons theme
#
# Copyright (c) 2016 - 2018 tnga <devtnga@gmail.com>
#
# All modifications and additions to the file contributed by third parties
# remain the property of their copyright owners, unless otherwise agreed
# upon. The license for this file, and modifications and additions to the
# file, is the same license as for the pristine package itself (unless the
# license for the pristine package is not an Open Source License, in which
# case the license is the MIT License). An "Open Source License" is a
# license that conforms to the Open Source Definition (Version 1.9)
# published by the Open Source Initiative.
#

Name:           umi-mvx-icons
Version:        2.0.0
Release:        3
License:        CC-BY-SA-4.0
Summary:        The best of M ~ Moka, V ~ Vivacious and X ~ X icons harmony. 
Url:            https://github.com/umilinux/umi-mvx-icons
Group:          System/GUI/Other
Source:         %{name}-%{version}.tar.xz
BuildRequires:  automake
BuildRequires:  fdupes
BuildRequires:  icon-naming-utils >= 0.8.7
BuildRoot:      %{_tmppath}/%{name}-%{version}-build
BuildArch:      noarch
Requires:		faba-icon-theme

%description
UMI MVX Icons theme use icons/elements of Vivacious, Faenza, Moka/Faba, Elementary, KDE Breeze, Numix & Mbuntu-Y Icons.

%prep
%setup -q
find -L . -type l -print -delete
chmod +x autogen.sh
chmod a-x README.md

%build
./autogen.sh
make %{?_smp_mflags}

%install
make install DESTDIR=%{buildroot} %{?_smp_mflags}
rm -f %{buildroot}%{_datadir}/icons/umi-mvx/AUTHORS
%fdupes %{buildroot}%{_datadir}/icons/umi-mvx

%post
%icon_theme_cache_post umi-mvx

%files
%defattr(-,root,root)
%doc COPYING LICENSE_* README.md
%{_datadir}/icons/umi-mvx
%ghost %{_datadir}/icons/umi-mvx/icon-theme.cache