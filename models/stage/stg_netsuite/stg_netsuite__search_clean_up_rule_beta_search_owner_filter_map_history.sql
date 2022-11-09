
with source as (

    select * from {{ source('raw_netsuite', 'search_clean_up_rule_beta_search_owner_filter_map_history') }}

),

renamed as (

    select
        employee_id,
        search_clean_up_rule_beta_id

    from source

)

select * from renamed
