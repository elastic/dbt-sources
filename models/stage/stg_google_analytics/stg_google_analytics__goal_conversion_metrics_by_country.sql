
with source as (

    select * from {{ source('raw_google_analytics', 'goal_conversion_metrics_by_country') }}

),

renamed as (

    select
        segment,
        as_of_date,
        continent,
        country,
        goal_completions_all,
        goal_01_completions,
        goal_01_value,
        goal_01_conversion_rate,
        goal_02_completions,
        goal_02_value,
        goal_02_conversion_rate,
        goal_03_completions,
        goal_03_value,
        goal_03_conversion_rate,
        goal_04_completions,
        goal_04_value,
        goal_04_conversion_rate,
        goal_05_completions,
        goal_05_value,
        goal_05_conversion_rate,
        goal_06_completions,
        goal_06_value,
        goal_06_conversion_rate,
        goal_07_completions,
        goal_07_value,
        goal_07_conversion_rate,
        goal_08_completions,
        goal_08_value,
        goal_08_conversion_rate,
        goal_10_completions,
        goal_10_value,
        goal_10_conversion_rate,
        goal_12_completions,
        goal_12_value,
        goal_12_conversion_rate

    from source

)

select * from renamed
