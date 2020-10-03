# Maintainer: Sivuyile Magutywa <s.magutywa@kernet.co.za>
pkgname=keyboard-led-git
pkgver=0.1
pkgrel=1
pkgdesc="A CLI for turning keyboard scroll lock on and off."
arch=('i686' 'x86_64')
url="https://github.com/Applicafroguy/keyboard-led.git"
license=('MIT')
groups=()
depends=()
makedepends=(git)
checkdepends=()
optdepends=(bash)
provides=(keyboard-led)
conflicts=()
replaces=()
backup=()
options=()
source=("git+$url")
noextract=()
md5sums=('SKIP')
validpgpkeys=()

package() {
    echo "$srcdir/$pkgname"
	cd "$srcdir/$pkgname"
    rm -rf "${pkgdir}/opt/${pkgname}/keyboardled"
    mkdir -p "${pkgdir}/opt/${pkgname}/keyboardled"

    install -Dm755 keyboardled/* -t "${pkgdir}/opt/${pkgname}/keyboardled"
    install -Dm644 LICENSE "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"
    install -Dm644 README.md "${pkgdir}/usr/share/doc/${pkgname}/README.md"
    install -Dm755 colorscript.sh "${pkgdir}"/usr/bin/colorscript
    install -Dm644 zsh_completion/_colorscript -t "${pkgdir}"/usr/share/zsh/site-functions
}
