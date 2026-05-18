$dest = "C:\Users\kl9275\e12grand\images"
New-Item -ItemType Directory -Path $dest -Force | Out-Null

$bilder = @(
  @{ namn="hero-banner.jpg";      url="https://lh3.googleusercontent.com/sitesv/AA5AbUBBi7mROByNyb0OVfgkh4JUiRTD6Ziq92kfgxDY0-xaYvgpR_nJwJ5TDfLbXdNVofzFZTz8LrRVTu1aN8YOGuNq_9lalWWrdk80l4PAcizm7Cl1F6QDhh7NItG-PgmUjaYkUh2CqfVxEQWpVV9E3Z78-3prq0Ibg9bszksMf-AGPiCbPky_LDI2keC55mqvAIKR06wUow1DB-jWoppaluVkzSDfDQiOAENO=w1280" }
  @{ namn="karta-e12.jpg";        url="https://lh3.googleusercontent.com/sitesv/AA5AbUAhSK-UgN-3Xi9zQyIGQdqo9wgjG8g8RkrTjMzeZywZE7kSKweeIU6IOiPuM3EtjNnY6xEHgX0mpMU-e07LWgsgl2QX3Q33kwTEK01n__c7EgUfbD3R8uwQxWxREE-CkcRS2PHvsvHJZ3XtZ6b1RWHzTqxCvwWcUIFJoUVznHSJo9zP_67hSjV4dpLDTjuxD0bT08pC8iIcw5nz8fa-QaHJrmsI0itEz409sMk=w1280" }
  @{ namn="talare-hellmark.jpg";  url="https://lh3.googleusercontent.com/sitesv/AA5AbUBPTs480fbW1An7gITXeQcVrFSPq1SOxXN3OzVoC6LjX5A0J3P7p-QDimH-TUrMFcAaEzf815U-bNePxePlkX0EF0WJAdJRfMv4P-6xAMuGnM2wo3nhXiA7-3d6iTb-ENYAZ0ojL_KDSQl6kp8AGdPh86Nh8VTeVh6dMlcN5t8hF0IzSGoVyTRXaNUnHwjgkPOP6PRpm2mjHlwyrGfZFmqcnFOmdJGDGVdGNFs=w400" }
  @{ namn="talare-lindberg.jpg";  url="https://lh3.googleusercontent.com/sitesv/AA5AbUB4LUAkt7odWDZyGJoVAuRztxhFvdfdwj2tRQTU8d8HdSrZOZytGnuaNXFx8RlrcHTp_oxKB9UeZApgGBtrCawBT1c04rEu2qNFgAShE-FjTf_nnX5eXNp8fLi5-U4G-RGInnqFS4gRVDURtYVGo0JZdrefrNgJQtwf7EHlSn-zBLnjas4hCztQ7kc=w400" }
  @{ namn="talare-ollikainen.jpg";url="https://lh3.googleusercontent.com/sitesv/AA5AbUA4FQJOOlxatiuFn0DlKamrj7I3nRrZvzoLDJXbO-4YX2kqyZ8dbqd4DJaUNxL3nMceoAzxaC_vUWPbmWH6v_PLRSu85TEhHouDGqkFBXg_mIa01EyOSqqa1CSvqZYN4t_afqc1PD6jdfGsFXvjD0t10IPMHOrcg0CKfp0-tKda7yEWOOzCxLIrmZE=w400" }
  @{ namn="talare-savola.jpg";    url="https://lh3.googleusercontent.com/sitesv/AA5AbUBvzdkKdi-m_IYlKxaj3zvcFft9UovcNIvsPkxn_j02fMbZJANmFVvp7MiJNRMpbaZIQtPT7XM64gnQzfhF0ZOvBDCtJ5mb27P_ddRgVX7XPDLVJM20bCdhJ_y5Odlqz545DTZNHJurQ4dzxqUtUCG9c6eybSDfc8F5Nuz-XVqsq7aSay8zoeCKEms=w400" }
  @{ namn="talare-lindstrom.jpg"; url="https://lh3.googleusercontent.com/sitesv/AA5AbUC0Uzg1QNULE-YP7VzyTe9Fe5c51jV7sP6tyHRmwwKOdhH5gBzeVKfqClk_kIGy1OcV7zhScHgJlkagsnIa--bTxxNdhl7lxuqEd6Fgv7fakca6JXo3VUvOsXlzM-XXvh3YnPNi5Pz9NmBLt9xZbqCiqxj8PCKgYKRBsriqlkucyH9Z1wr3BtSe=w400" }
  @{ namn="talare-carstedt.jpg";  url="https://lh3.googleusercontent.com/sitesv/AA5AbUCibV54Fg_ull_HAyrLYeWj71huXK_XIdyFAUDIpZSzUPLqtsPqe9-VWcYyMq9l7J8lIBHbWyQ4F1A6kO8fE7X1lWZd3lL6FLO5adN9STOa8HlXfBvRZtnSWQDTkKSL_c-CzP53sR_ydDIHgjcNYQO9ksLcgBc5ftisIbNdi4JcZPROOcA02vGRjLk=w400" }
  @{ namn="talare-stahl.jpg";     url="https://lh3.googleusercontent.com/sitesv/AA5AbUAEkW3gxpTX7XPMdZ9T9pJTCyW6z3vtMGEECZUR7xjEin-_YWLslJnmHV-nbK5QMzji17qIr32xErScHxZkD6DK22qVR4pi9US8tUkc4sGAh4xVvk_YGdXPJdweWCvZuIuBAikjrgiWm9TbCELFd7Ngvu1MV1QuxoIav5zYTYyMwp53g34caniJM=w400" }
  @{ namn="talare-beckeman.jpg";  url="https://lh3.googleusercontent.com/sitesv/AA5AbUDJN9IOKdw9Nci8vezWQRJPFKcJL3_I-3pOpQ8zz_tNTbOq2HegGf46nYDc4ii0fIozSORISQktyEmZPPlD1yl5W3oFGd8UOiOS0fTYCTtSVyj7Cav4HukP1UKF5oWSvIqe7ANsQ0ui0DBUOyge0Kr2RNfq8nSQZh3Gvt_0twmF1y3kJJxoc8kjDEg=w400" }
  @{ namn="talare-waage.jpg";     url="https://lh3.googleusercontent.com/sitesv/AA5AbUB-vQ707YvV3cllhBM4lFxHaIAbKAqwmcG26LnkpjAqSTjevnO7p39Fhca7xAWjQXBSyN-0E6RC-fwe7gu-VBIyWdNtos-ThG0ngP1k8d0cuzasLbJp7jIkqLTRzcJ_5_s1BUh7rYXgfHWb5M3tBgGK6FLFL7wsYNM_Ciqj-MIIp6rAJGmnsL3ESuA=w400" }
  @{ namn="talare-wappling.jpg";  url="https://lh3.googleusercontent.com/sitesv/AA5AbUDXj24i0rfc6CueQuMclWqM6UNPNoSIRJgKKXhXk0SIDtw3Hh5GR5-iwOZK7_RvNlxt_sQusbBL4UT-m9g0TNAZFoQD9-iqXpgDKSvmb0pvrR826duWtqytcQCyvDWX5hkomdkQD12b73MBgqMISFz_IxDI8CoXBSmPfjSFZr9mxOf6KfTEtiof=w400" }
  @{ namn="talare-nordebo.jpg";   url="https://lh3.googleusercontent.com/sitesv/AA5AbUDjmbM8vd6VuTphylm7OiOdIyaY7n5vzISwuV1CDWQt-3lf3uzNRgna1bJ8vkf2BkolUT2gn0DAZNQOn-z_tJQW745LIT10s1uXYNDjjmuuvI5RY00hgP5KCYPPEkfbBwdLSZlCp6R-6WpvzGYEVIr52vpGs5nAM6S8czmgoJO5TdCJiKMVbwRTNz8=w400" }
  @{ namn="galleri-1.jpg";        url="https://lh3.googleusercontent.com/sitesv/AA5AbUBPTs480fbW1An7gITXeQcVrFSPq1SOxXN3OzVoC6LjX5A0J3P7p-QDimH-TUrMFcAaEzf815U-bNePxePlkX0EF0WJAdJRfMv4P-6xAMuGnM2wo3nhXiA7-3d6iTb-ENYAZ0ojL_KDSQl6kp8AGdPh86Nh8VTeVh6dMlcN5t8hF0IzSGoVyTRXaNUnHwjgkPOP6PRpm2mjHlwyrGfZFmqcnFOmdJGDGVdGNFs=w800" }
  @{ namn="galleri-2.jpg";        url="https://lh3.googleusercontent.com/sitesv/AA5AbUB4LUAkt7odWDZyGJoVAuRztxhFvdfdwj2tRQTU8d8HdSrZOZytGnuaNXFx8RlrcHTp_oxKB9UeZApgGBtrCawBT1c04rEu2qNFgAShE-FjTf_nnX5eXNp8fLi5-U4G-RGInnqFS4gRVDURtYVGo0JZdrefrNgJQtwf7EHlSn-zBLnjas4hCztQ7kc=w800" }
  @{ namn="galleri-3.jpg";        url="https://lh3.googleusercontent.com/sitesv/AA5AbUA4FQJOOlxatiuFn0DlKamrj7I3nRrZvzoLDJXbO-4YX2kqyZ8dbqd4DJaUNxL3nMceoAzxaC_vUWPbmWH6v_PLRSu85TEhHouDGqkFBXg_mIa01EyOSqqa1CSvqZYN4t_afqc1PD6jdfGsFXvjD0t10IPMHOrcg0CKfp0-tKda7yEWOOzCxLIrmZE=w800" }
  @{ namn="galleri-4.jpg";        url="https://lh3.googleusercontent.com/sitesv/AA5AbUBvzdkKdi-m_IYlKxaj3zvcFft9UovcNIvsPkxn_j02fMbZJANmFVvp7MiJNRMpbaZIQtPT7XM64gnQzfhF0ZOvBDCtJ5mb27P_ddRgVX7XPDLVJM20bCdhJ_y5Odlqz545DTZNHJurQ4dzxqUtUCG9c6eybSDfc8F5Nuz-XVqsq7aSay8zoeCKEms=w800" }
  @{ namn="galleri-5.jpg";        url="https://lh3.googleusercontent.com/sitesv/AA5AbUC0Uzg1QNULE-YP7VzyTe9Fe5c51jV7sP6tyHRmwwKOdhH5gBzeVKfqClk_kIGy1OcV7zhScHgJlkagsnIa--bTxxNdhl7lxuqEd6Fgv7fakca6JXo3VUvOsXlzM-XXvh3YnPNi5Pz9NmBLt9xZbqCiqxj8PCKgYKRBsriqlkucyH9Z1wr3BtSe=w800" }
  @{ namn="galleri-6.jpg";        url="https://lh3.googleusercontent.com/sitesv/AA5AbUCibV54Fg_ull_HAyrLYeWj71huXK_XIdyFAUDIpZSzUPLqtsPqe9-VWcYyMq9l7J8lIBHbWyQ4F1A6kO8fE7X1lWZd3lL6FLO5adN9STOa8HlXfBvRZtnSWQDTkKSL_c-CzP53sR_ydDIHgjcNYQO9ksLcgBc5ftisIbNdi4JcZPROOcA02vGRjLk=w800" }
  @{ namn="galleri-7.jpg";        url="https://lh3.googleusercontent.com/sitesv/AA5AbUAEkW3gxpTX7XPMdZ9T9pJTCyW6z3vtMGEECZUR7xjEin-_YWLslJnmHV-nbK5QMzji17qIr32xErScHxZkD6DK22qVR4pi9US8tUkc4sGAh4xVvk_YGdXPJdweWCvZuIuBAikjrgiWm9TbCELFd7Ngvu1MV1QuxoIav5zYTYyMwp53g34caniJM=w800" }
  @{ namn="galleri-8.jpg";        url="https://lh3.googleusercontent.com/sitesv/AA5AbUDJN9IOKdw9Nci8vezWQRJPFKcJL3_I-3pOpQ8zz_tNTbOq2HegGf46nYDc4ii0fIozSORISQktyEmZPPlD1yl5W3oFGd8UOiOS0fTYCTtSVyj7Cav4HukP1UKF5oWSvIqe7ANsQ0ui0DBUOyge0Kr2RNfq8nSQZh3Gvt_0twmF1y3kJJxoc8kjDEg=w800" }
  @{ namn="galleri-9.jpg";        url="https://lh3.googleusercontent.com/sitesv/AA5AbUDXj24i0rfc6CueQuMclWqM6UNPNoSIRJgKKXhXk0SIDtw3Hh5GR5-iwOZK7_RvNlxt_sQusbBL4UT-m9g0TNAZFoQD9-iqXpgDKSvmb0pvrR826duWtqytcQCyvDWX5hkomdkQD12b73MBgqMISFz_IxDI8CoXBSmPfjSFZr9mxOf6KfTEtiof=w800" }
  @{ namn="galleri-10.jpg";       url="https://lh3.googleusercontent.com/sitesv/AA5AbUDjmbM8vd6VuTphylm7OiOdIyaY7n5vzISwuV1CDWQt-3lf3uzNRgna1bJ8vkf2BkolUT2gn0DAZNQOn-z_tJQW745LIT10s1uXYNDjjmuuvI5RY00hgP5KCYPPEkfbBwdLSZlCp6R-6WpvzGYEVIr52vpGs5nAM6S8czmgoJO5TdCJiKMVbwRTNz8=w800" }
  @{ namn="galleri-11.jpg";       url="https://lh3.googleusercontent.com/sitesv/AA5AbUB-vQ707YvV3cllhBM4lFxHaIAbKAqwmcG26LnkpjAqSTjevnO7p39Fhca7xAWjQXBSyN-0E6RC-fwe7gu-VBIyWdNtos-ThG0ngP1k8d0cuzasLbJp7jIkqLTRzcJ_5_s1BUh7rYXgfHWb5M3tBgGK6FLFL7wsYNM_Ciqj-MIIp6rAJGmnsL3ESuA=w800" }
)

foreach ($b in $bilder) {
  $path = "$dest\$($b.namn)"
  try {
    Invoke-WebRequest -Uri $b.url -OutFile $path -TimeoutSec 30
    $size = [math]::Round((Get-Item $path).Length / 1KB)
    Write-Host "OK  $($b.namn) ($size KB)"
  } catch {
    Write-Host "FEL $($b.namn): $($_.Exception.Message)"
  }
}

Write-Host "`nKlart! Kontrollera images-mappen."
