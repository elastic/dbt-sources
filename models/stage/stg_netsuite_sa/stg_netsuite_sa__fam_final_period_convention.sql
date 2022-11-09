
with source as (

    select * from {{ source('raw_netsuite_sa', 'fam_final_period_convention') }}

),

renamed as (

    select
        list_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        fam_final_period_convention_ex,
        is_record_inactive,
        last_modified_date,
        list_item_name

    from source

)

select * from renamed
