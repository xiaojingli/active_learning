% UNLABELED_SELECTOR selects those points not yet observed.
%
% Usage:
%
%   test_ind = unlabeled_selector(problem, train_ind, observed_labels)
%
% Inputs:
%           problem: a struct describing the problem, which must at
%                    least contain the field:
%
%              points: an (n x d) data matrix for the avilable points
%
%         train_ind: a list of indices into problem.points indicating
%                    the thus-far observed points
%   observed_labels: a list of labels corresponding to the
%                    observations in train_ind
%
%                    Note: this input is ignored by unlabeled_selector.
%                    If desired, it can be replaced by an empty matrix.
%
% Output:
%   test_ind: a list of indices into problem.points indicating the
%             points to consider for labeling
%
% See also SELECTORS.

% Copyright (c) Roman Garnett, 2013--2014

function test_ind = unlabeled_selector(problem, train_ind, ~)

  test_ind = identity_selector(problem, [], []);
  test_ind(train_ind) = [];

end