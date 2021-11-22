import pytest
import math
import sys
import calendar
from pytest_bdd import scenarios, parsers, given, when, then

import retirement


EXTRA_TYPES = {
    'Number': int,
}


CONVERTERS = {
    'initial': list,
    'some': int,
    'retirement': str,
}



@given(parsers.cfparse('the birth year are  "{initial:years}" ', extra_types=EXTRA_TYPES), target_fixture='basket')
@given('the year function has "<years>" cucumbers', target_fixture='year')

@when(parsers.cfparse('"{some:Number}" years are added to the year holder', extra_types=EXTRA_TYPES))
@when('"<some>" year is added to the year holder')
def year(years):
    return years

@then(parsers.cfparse('the retirement age contains "(66,0)"', extra_types=EXTRA_TYPES))
@then('the retirement age is "(66,0)" cucumbers')
def test_r_calc(years):
    assert retirement.get_retirement_age1(years) == (66, 0)