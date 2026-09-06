/// Asset paths for the Home screen's image banners (see
/// `lib/images/README.md` for where to drop the actual files).

/// Shown in the 3D coverflow (portrait, 9:16).
const List<String> kCoverflowBanners = [
  'lib/images/wheelmanagement.jpg',
  'lib/images/paintcare.jpg',
  'lib/images/washing.jpg',
  'lib/images/service.jpg',
  'lib/images/ac.jpg',
];

/// Which [kCoverflowBanners] entry is centered/selected when the coverflow
/// first appears — looked up by filename (not a hardcoded index) so it
/// still points at the right slide if the list above gets reordered. Also
/// the one slide the "OUR PACKAGES" side heading is visible at.
const String kDefaultCoverflowBanner = 'lib/images/wheelmanagement.jpg';

/// Shown in the flat 2-up horizontal-scroll row below the coverflow
/// (landscape, 3:2 — matches the images' native 1536x1024 size).
const List<String> kServiceBanners = [
  'lib/images/tyres.jpeg',
  'lib/images/spares.jpeg',
  'lib/images/servicing.jpeg',
  'lib/images/painting.jpeg',
  'lib/images/detailing.jpeg',
  'lib/images/dent.jpeg',
  'lib/images/carspa.jpeg',
  'lib/images/insurance.jpeg',
];

/// The single promo banner shown under "Keep your car showroom-new
/// everyday :", below the 2-up scroll row.
const String kSubscriptionBanner = 'lib/images/subscription.jpeg';

/// Shown under "Get your paint protected :", below the services grid.
const String kPpfBanner = 'lib/images/PPFbanner.jpeg';

/// Shown under "Stranded somewhere ?", below the PPF banner.
const String kEmergencyBanner = 'lib/images/emergency.jpeg';
