package Classes::Device;
our @ISA = qw(GLPlugin);
use strict;


sub classify {
  my $self = shift;
  if (! ($self->opts->ashost && $self->opts->username && $self->opts->password)) {
    $self->add_unknown('specify at least hostname, username and password');
  } else {
    bless $self, 'Classes::SAP';
    $self->debug('using Classes::SAP');
    $self->check_rfc_and_model();
  }
}
