
with source as (

    select * from {{ source('raw_netsuite_sa', 'elastic_approval_rule_type_history') }}

),

renamed as (

    select
        list_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        elastic_approval_rule_type_ext,
        is_record_inactive,
        last_modified_date,
        list_item_name,
        partition_date

    from source

)

select * from renamed
