//frixion
if (abs(hsp) >= fric)
{
    if (mv == 0 || mv != sign(hsp))
    {
        hsp -= sign(hsp) * fric;
    }
}
if (mv == 0 && abs(hsp) < fric) hsp = 0;
