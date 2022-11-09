
with source as (

    select * from {{ source('raw_netsuite_sa', 'elastic_approval_rule_group_map_history') }}

),

renamed as (

    select
        elastic_approval_rule_group_id,
        transaction_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        partition_date

    from source

)

select * from renamed
