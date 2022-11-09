
with source as (

    select * from {{ source('raw_netsuite', 'elastic_approval_rule_group_subsidiary_map') }}

),

renamed as (

    select
        elastic_approval_rule_group_id,
        subsidiary_id

    from source

)

select * from renamed
