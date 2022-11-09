
with source as (

    select * from {{ source('raw_netsuite', 'search_clean_up_rule_beta_owner_subsidiary_filter_map') }}

),

renamed as (

    select
        class_id,
        search_clean_up_rule_beta_id

    from source

)

select * from renamed
