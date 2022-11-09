
with source as (

    select * from {{ source('raw_netsuite', 'elastic_approval_rule_group_department_map') }}

),

renamed as (

    select
        department_id,
        elastic_approval_rule_group_id

    from source

)

select * from renamed
