
with source as (

    select * from {{ source('raw_netsuite', 'search_clean_up_rule_beta_excluded_searches_map') }}

),

renamed as (

    select
        customization_id,
        search_clean_up_rule_beta_id

    from source

)

select * from renamed
