
with source as (

    select * from {{ source('raw_netsuite', 'search_clean_up_rule_beta_rule_owners_map') }}

),

renamed as (

    select
        employee_id,
        search_clean_up_rule_beta_id

    from source

)

select * from renamed
