
with source as (

    select * from {{ source('raw_netsuite_sa', 'elastic_approval_rule_group_map') }}

),

renamed as (

    select
        elastic_approval_rule_group_id,
        transaction_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
