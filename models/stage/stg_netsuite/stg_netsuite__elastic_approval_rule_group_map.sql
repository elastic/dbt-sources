
with source as (

    select * from {{ source('raw_netsuite', 'elastic_approval_rule_group_map') }}

),

renamed as (

    select
        elastic_approval_rule_group_id,
        transaction_id

    from source

)

select * from renamed
