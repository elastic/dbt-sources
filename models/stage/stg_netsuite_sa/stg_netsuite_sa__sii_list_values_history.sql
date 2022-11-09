
with source as (

    select * from {{ source('raw_netsuite_sa', 'sii_list_values_history') }}

),

renamed as (

    select
        sii_list_values_id,
        _fivetran_deleted,
        _fivetran_synced,
        code,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        list_type_id,
        parent_id,
        sii_list_values_extid,
        sii_list_values_name,
        partition_date

    from source

)

select * from renamed
