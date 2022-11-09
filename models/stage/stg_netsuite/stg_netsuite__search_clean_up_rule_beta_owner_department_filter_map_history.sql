
with source as (

    select * from {{ source('raw_netsuite', 'search_clean_up_rule_beta_owner_department_filter_map_history') }}

),

renamed as (

    select
        department_id,
        search_clean_up_rule_beta_id

    from source

)

select * from renamed
